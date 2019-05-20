//
//  DHKPlaylistListTableViewController.m
//  PlayistInObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import "DHKPlaylistListTableViewController.h"
#import "DHKPlaylistController.h"
#import "DHKDetailTableViewController.h"

@interface DHKPlaylistListTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;


@end

@implementation DHKPlaylistListTableViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:true];
    [self.tableView reloadData];
    
}

- (IBAction)addButtonTapped:(UIBarButtonItem *)sender
{
    [[DHKPlaylistController sharedController] createPlaylistWIthName: self.nameTextField.text];
    [self.tableView reloadData];
    self.nameTextField.text = @"";
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[DHKPlaylistController sharedController] playlist] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"playlistCell" forIndexPath:indexPath];
    
    DHKPlaylist *playlist = [[[DHKPlaylistController sharedController] playlist] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [playlist name];
    cell.detailTextLabel.text = [NSString stringWithFormat: @"%lu songs", playlist.songs.count];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // IIDOO
    if ([[segue identifier] isEqualToString:@"toPlaylistDetailView"]){
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        DHKDetailTableViewController *destinationVC = [segue destinationViewController];
        DHKPlaylist *playlist = [[[DHKPlaylistController sharedController] playlist] objectAtIndex:indexPath.row];
        destinationVC.playlist = playlist;
    }
}


@end
