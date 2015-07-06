# IconKit

### Welcome to IconKit.
IconKit is a dynamic icon generation library.You can create dynamic icon by code

### Example:

### Search Icon
###Fill Icon
`Search *search =[[Search alloc] initWithSize:CGSizeMake(200, 200)];`

`search.fillColor =[UIColor redColor];`

`UIImage *image =search.image;`

![green search](https://dl.dropboxusercontent.com/s/zicoo3gkl7nbhed/green_search.png)![red search]( https://dl.dropboxusercontent.com/s/84p24cplkcjek1f/search.png)

### Stroke Icon
 `Search *search =[[Search alloc] initWithSize:CGSizeMake(75, 75)];`
 
 `search.onlyStroke =YES;`
 
 `search.strokeColor = [UIColor blueColor];`
 
 `search.strokeWidth = 1.0;`
 
 `UIImage *image =search.image;`
 
 ![blue stroke](https://dl.dropboxusercontent.com/s/51h2y4zxucctxty/blue_stoke.png)![green stroke]( https://dl.dropboxusercontent.com/s/1gjvr68720ghzr5/green_stoke.png)
 
###Next Icon 
###StrokeIcon With Round

 `Next *next =[[Next alloc] initWithSize:CGSizeMake(200, 200)];`
 
 `next.strokeColor = [UIColor blackColor];`
 
 `next.strokeWidth = 2.0;`
 
 `next.hasRound = YES;`   
 
 `next.onlyStroke = YES;`
 
 `UIImage *nextImage = next.image;`
 
 ![blue stroke](https://dl.dropboxusercontent.com/s/854vehix8mvm4xb/next_black_Stroke.png)![green stroke]( https://dl.dropboxusercontent.com/s/vmwvq3hzl0ojtpv/Next_blue_stroke.png)
 
 
###FillIcon With Round

 `Next *next =[[Next alloc] initWithSize:CGSizeMake(200, 200)];`
 
 `next.fillColor = [UIColor grayColor];`
 
 `next.strokeColor =[UIColor blackColor];`
 
 `next.strokeWidth = 2.0;`
 
 `next.hasRound = YES;`
 
 `next.onlyStroke = NO;`
 
 ![blue stroke](https://dl.dropboxusercontent.com/s/pp1ypwh27nu98yn/next_fill_Black.png)![green stroke]( https://dl.dropboxusercontent.com/s/0niw3w81n2antaa/next_fill_gb.png)
 
###Previous Icon 

###StrokeIcon With Round

 `Previous *prev =[[Previous alloc] initWithSize:CGSizeMake(200, 200)];`
 
 `prev.strokeColor = [UIColor blackColor];`
 
 `prev.strokeWidth = 2.0;`
 
 `prev.hasRound = YES;`   
 
 `prev.onlyStroke = YES;`
 
 `UIImage *prevImage = prev.image;`
 
 ![Imgur](http://i.imgur.com/pGQ5lDa.png)

###FillIcon With Round

 `Previous *prev =[[Previous alloc] initWithSize:CGSizeMake(200, 200)];`
 
 `prev.fillColor = [UIColor grayColor];`
 
 `prev.strokeColor =[UIColor blackColor];`
 
 `prev.strokeWidth = 2.0;`
 
 `prev.hasRound = YES;`
 
 `prev.onlyStroke = NO;`
 
 `UIImage *prevImage = prev.image;`

![Imgur](http://i.imgur.com/WFs4ElX.png)
