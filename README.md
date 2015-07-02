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
 
###FillIcon With Round

 `Next *next =[[Next alloc] initWithSize:CGSizeMake(200, 200)];`
 
 `next.fillColor = [UIColor grayColor];`
 
 `next.strokeColor =[UIColor blackColor];`
 
 `next.strokeWidth = 2.0;`
 
 `next.hasRound = YES;`
 
 `next.onlyStroke = NO;`
