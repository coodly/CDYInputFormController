/*
 * Copyright 2014 Coodly LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "CDYInputFormController.h"
#import "CDYTableSection.h"
#import "CDYInputFormConstants.h"

@interface CDYInputFormController ()

@property (nonatomic, strong) NSMutableArray *presentedSections;

@end

@implementation CDYInputFormController

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.presentedSections count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex {
    CDYTableSection *section = self.presentedSections[sectionIndex];
    return [section cellsCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CDYTableSection *section = self.presentedSections[indexPath.section];
    return [section cellOnRow:indexPath.row];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    UITableViewCell *cell = [self.presentedSections[indexPath.row] cellOnRow:indexPath.row];
    [self tappedCell:cell atIndexPath:indexPath];
}

- (void)tappedCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    CDYFILog(@"tappedCell:atIndexPath:%@", indexPath);
}

- (void)addSection:(CDYTableSection *)section {
    [self.presentedSections addObject:section];
}

- (NSMutableArray *)presentedSections {
    if (!_presentedSections) {
        _presentedSections = [NSMutableArray array];
    }

    return _presentedSections;
}


@end
