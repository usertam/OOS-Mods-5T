.class Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private mLowerIndex:I

.field private mMaxBlue:I

.field private mMaxGreen:I

.field private mMaxRed:I

.field private mMinBlue:I

.field private mMinGreen:I

.field private mMinRed:I

.field private mPopulation:I

.field private mUpperIndex:I

.field final synthetic this$0:Landroid/support/v7/graphics/ColorCutQuantizer;


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V
    .locals 0
    .param p2, "lowerIndex"    # I
    .param p3, "upperIndex"    # I

    .line 225
    iput-object p1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 227
    iput p3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 228
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    .line 229
    return-void
.end method


# virtual methods
.method final canSplit()Z
    .locals 2

    .line 237
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final findSplitPoint()I
    .locals 7

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    .line 344
    .local v0, "longestDimension":I
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v1, v1, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    .line 345
    .local v1, "colors":[I
    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v2, v2, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 350
    .local v2, "hist":[I
    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 353
    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 356
    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 358
    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v3, v3, 0x2

    .line 359
    .local v3, "midPoint":I
    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "count":I
    :goto_0
    iget v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v4, v6, :cond_1

    .line 360
    aget v6, v1, v4

    aget v6, v2, v6

    add-int/2addr v5, v6

    .line 361
    if-lt v5, v3, :cond_0

    .line 364
    iget v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6

    .line 359
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 368
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_1
    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return v4
.end method

.method final fitBox()V
    .locals 14

    .line 248
    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v0, v0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    .line 249
    .local v0, "colors":[I
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v1, v1, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 253
    .local v1, "hist":[I
    const v2, 0x7fffffff

    move v3, v2

    .local v3, "minBlue":I
    move v4, v2

    .line 255
    .local v2, "minRed":I
    .local v4, "minGreen":I
    const/high16 v5, -0x80000000

    move v6, v5

    .local v6, "maxBlue":I
    move v7, v5

    .line 256
    .local v5, "maxRed":I
    .local v7, "maxGreen":I
    const/4 v8, 0x0

    .line 258
    .local v8, "count":I
    iget v9, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v9, "i":I
    :goto_0
    iget v10, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v9, v10, :cond_6

    .line 259
    aget v10, v0, v9

    .line 260
    .local v10, "color":I
    aget v11, v1, v10

    add-int/2addr v8, v11

    .line 262
    invoke-static {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v11

    .line 263
    .local v11, "r":I
    invoke-static {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v12

    .line 264
    .local v12, "g":I
    invoke-static {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v13

    .line 265
    .local v13, "b":I
    if-le v11, v5, :cond_0

    .line 266
    move v5, v11

    .line 268
    :cond_0
    if-ge v11, v2, :cond_1

    .line 269
    move v2, v11

    .line 271
    :cond_1
    if-le v12, v7, :cond_2

    .line 272
    move v7, v12

    .line 274
    :cond_2
    if-ge v12, v4, :cond_3

    .line 275
    move v4, v12

    .line 277
    :cond_3
    if-le v13, v6, :cond_4

    .line 278
    move v6, v13

    .line 280
    :cond_4
    if-ge v13, v3, :cond_5

    .line 281
    move v3, v13

    .line 258
    .end local v10    # "color":I
    .end local v11    # "r":I
    .end local v12    # "g":I
    .end local v13    # "b":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 285
    .end local v9    # "i":I
    :cond_6
    iput v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 286
    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 287
    iput v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 288
    iput v7, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 289
    iput v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 290
    iput v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 291
    iput v8, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 292
    return-void
.end method

.method final getAverageColor()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 11

    .line 375
    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v0, v0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    .line 376
    .local v0, "colors":[I
    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget-object v1, v1, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 377
    .local v1, "hist":[I
    const/4 v2, 0x0

    .line 378
    .local v2, "redSum":I
    const/4 v3, 0x0

    .line 379
    .local v3, "greenSum":I
    const/4 v4, 0x0

    .line 380
    .local v4, "blueSum":I
    const/4 v5, 0x0

    .line 382
    .local v5, "totalPopulation":I
    iget v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v6, "i":I
    :goto_0
    iget v7, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v6, v7, :cond_0

    .line 383
    aget v7, v0, v6

    .line 384
    .local v7, "color":I
    aget v8, v1, v7

    .line 386
    .local v8, "colorPopulation":I
    add-int/2addr v5, v8

    .line 387
    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v2, v9

    .line 388
    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 389
    invoke-static {v7}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v4, v9

    .line 382
    .end local v7    # "color":I
    .end local v8    # "colorPopulation":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 392
    .end local v6    # "i":I
    :cond_0
    int-to-float v6, v2

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 393
    .local v6, "redMean":I
    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 394
    .local v7, "greenMean":I
    int-to-float v8, v4

    int-to-float v9, v5

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 396
    .local v8, "blueMean":I
    new-instance v9, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v6, v7, v8}, Landroid/support/v7/graphics/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v10

    invoke-direct {v9, v10, v5}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    return-object v9
.end method

.method final getColorCount()I
    .locals 2

    .line 241
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    const/4 v1, 0x1

    add-int/2addr v1, v0

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v1, v0

    return v1
.end method

.method final getLongestColorDimension()I
    .locals 4

    .line 320
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    .line 321
    .local v0, "redLength":I
    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    .line 322
    .local v1, "greenLength":I
    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v2, v3

    .line 324
    .local v2, "blueLength":I
    if-lt v0, v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 325
    const/4 v3, -0x3

    return v3

    .line 326
    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v1, v2, :cond_1

    .line 327
    const/4 v3, -0x2

    return v3

    .line 329
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method final getVolume()I
    .locals 3

    .line 232
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final splitBox()Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    .locals 5

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    .line 307
    .local v0, "splitPoint":I
    new-instance v1, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;-><init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V

    .line 310
    .local v1, "newBox":Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    iput v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    .line 313
    return-object v1

    .line 301
    .end local v0    # "splitPoint":I
    .end local v1    # "newBox":Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
