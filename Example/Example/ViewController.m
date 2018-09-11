//
//  ViewController.m
//  Example
//
//  Created by Larry Borsato on 2018-09-07.
//  Copyright © 2018 Boomtown. All rights reserved.
//

#import "ViewController.h"
#import <SwaggerClient/SWGDefaultConfiguration.h>
#import <SwaggerClient/SWGOrgsAPI.h>

#define API_TOKEN       @"__API_TOKEN__"
#define API_PRIVATE_KEY @"___API_PRIVATE_KEY"

@interface ViewController ()

@property (strong, nonatomic)   UITableView     *tableView;
@property (strong, nonatomic)   NSMutableArray  *orgs;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableView];
    
    SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
    [apiConfig setAPIToken:API_TOKEN];
    [apiConfig setAPIPrivateKey:API_PRIVATE_KEY];

    self.orgs = [NSMutableArray new];
    [self getOrg];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//  Get a list of organizations
- (void)getOrg
{
    [[[SWGOrgsApi alloc] init] getOrgWithCompletionHandler:^(SWGOrgResponse *output, NSError *error) {
        if ( error != nil )
        {
            NSLog(@"%@", error.description);
        }
        else
        {
            if ( output.totalCount > 0 )
            {
                [self.orgs removeAllObjects];
                for ( SWGOrg *org in output.results )
                {
                    [self.orgs addObject:org];
                }
                [self.tableView reloadData];
            }
        }
    }];
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
        return 1;
}


- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return self.orgs.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    NSInteger row = [indexPath row];
    SWGOrg *org = (SWGOrg *)self.orgs[row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@, %@", org.name, org.city];    
    return cell;
}



@end
