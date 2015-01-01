.class public Lcom/getbase/floatingactionbutton/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionButton$FAB_SIZE;
    }
.end annotation


# static fields
.field private static final HALF_TRANSPARENT_BLACK:I

.field private static final HALF_TRANSPARENT_WHITE:I

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mCircleSize:F

.field mColorNormal:I

.field mColorPressed:I

.field private mDrawableSize:I

.field private mIcon:I

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mSize:I

.field mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 42
    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_WHITE:I

    .line 43
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_BLACK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_BLACK:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_WHITE:I

    return v0
.end method

.method private createCircleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 244
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 246
    .local v1, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 247
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    return-object v1
.end method

.method private createFillDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 238
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 239
    new-array v1, v3, [I

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 240
    return-object v0
.end method

.method private createInnerStrokesDrawable(F)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "strokeWidth"    # F

    .prologue
    const/4 v7, 0x1

    .line 271
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 273
    .local v1, "innerBottom":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 274
    .local v0, "bottomPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 276
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    const v4, 0x3d23d70a

    invoke-direct {p0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opacityToAlpha(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 278
    new-instance v4, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;

    invoke-direct {v4, p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 289
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 291
    .local v2, "innerTop":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 292
    .local v3, "topPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 294
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    const v4, 0x3f4ccccd

    invoke-direct {p0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opacityToAlpha(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    new-instance v4, Lcom/getbase/floatingactionbutton/FloatingActionButton$2;

    invoke-direct {v4, p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton$2;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 307
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v4
.end method

.method private createOuterStrokeDrawable(F)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "strokeWidth"    # F

    .prologue
    .line 254
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 256
    .local v1, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 257
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 258
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 260
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    const v2, 0x3ca3d70a

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opacityToAlpha(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    return-object v1
.end method

.method private opacityToAlpha(F)I
    .locals 1
    .param p1, "opacity"    # F

    .prologue
    .line 267
    const/high16 v0, 0x437f0000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 317
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateCircleSize()V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-nez v0, :cond_0

    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_size_normal:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    .line 94
    return-void

    .line 93
    :cond_0
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_size_mini:I

    goto :goto_0
.end method

.method private updateDrawableSize()V
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    const/high16 v1, 0x40000000

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    .line 90
    return-void
.end method


# virtual methods
.method getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    return v0
.end method

.method getDimension(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 72
    sget-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "attr":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const v2, 0x1060013

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    .line 74
    const v1, 0x1060012

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    .line 75
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    .line 76
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 77
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateCircleSize()V

    .line 81
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    .line 82
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    .line 83
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateDrawableSize()V

    .line 85
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 179
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    invoke-virtual {p0, v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    .line 180
    return-void
.end method

.method public setColorNormal(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 133
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    if-eq v0, p1, :cond_0

    .line 134
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    .line 135
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 137
    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1
    .param p1, "colorNormal"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorNormal(I)V

    .line 130
    return-void
.end method

.method public setColorPressed(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    if-eq v0, p1, :cond_0

    .line 152
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    .line 153
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 155
    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1
    .param p1, "colorPressed"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorPressed(I)V

    .line 148
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    if-eq v0, p1, :cond_0

    .line 116
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 117
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 119
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use @FAB_SIZE constants only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-eq v0, p1, :cond_1

    .line 102
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    .line 103
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateCircleSize()V

    .line 104
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateDrawableSize()V

    .line 105
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 107
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 167
    sget v1, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "label":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 173
    new-instance v1, Lcom/getbase/floatingactionbutton/FloatingActionButton$3;

    invoke-direct {v1, p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton$3;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_0
    return-void
.end method

.method updateBackground()V
    .locals 15

    .prologue
    .line 183
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_stroke_width:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v14

    .line 184
    .local v14, "strokeWidth":F
    const/high16 v1, 0x40000000

    div-float v12, v14, v1

    .line 186
    .local v12, "halfStrokeWidth":F
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x5

    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-nez v1, :cond_0

    sget v1, Lcom/getbase/floatingactionbutton/R$drawable;->fab_bg_normal:I

    :goto_0
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createFillDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x2

    invoke-direct {p0, v14}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createOuterStrokeDrawable(F)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x3

    invoke-direct {p0, v14}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createInnerStrokesDrawable(F)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 195
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    sget v4, Lcom/getbase/floatingactionbutton/R$dimen;->fab_icon_size:I

    invoke-virtual {p0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    div-int/lit8 v13, v1, 0x2

    .line 197
    .local v13, "iconOffset":I
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    float-to-int v2, v1

    .line 198
    .local v2, "circleInsetHorizontal":I
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    sub-float/2addr v1, v4

    float-to-int v3, v1

    .line 199
    .local v3, "circleInsetTop":I
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    add-float/2addr v1, v4

    float-to-int v5, v1

    .line 201
    .local v5, "circleInsetBottom":I
    const/4 v1, 0x1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 207
    const/4 v7, 0x2

    int-to-float v1, v2

    sub-float/2addr v1, v12

    float-to-int v8, v1

    int-to-float v1, v3

    sub-float/2addr v1, v12

    float-to-int v9, v1

    int-to-float v1, v2

    sub-float/2addr v1, v12

    float-to-int v10, v1

    int-to-float v1, v5

    sub-float/2addr v1, v12

    float-to-int v11, v1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 213
    const/4 v7, 0x3

    int-to-float v1, v2

    add-float/2addr v1, v12

    float-to-int v8, v1

    int-to-float v1, v3

    add-float/2addr v1, v12

    float-to-int v9, v1

    int-to-float v1, v2

    add-float/2addr v1, v12

    float-to-int v10, v1

    int-to-float v1, v5

    add-float/2addr v1, v12

    float-to-int v11, v1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 219
    const/4 v7, 0x4

    add-int v8, v2, v13

    add-int v9, v3, v13

    add-int v10, v2, v13

    add-int v11, v5, v13

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 225
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 226
    return-void

    .line 186
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "circleInsetHorizontal":I
    .end local v3    # "circleInsetTop":I
    .end local v5    # "circleInsetBottom":I
    .end local v13    # "iconOffset":I
    :cond_0
    sget v1, Lcom/getbase/floatingactionbutton/R$drawable;->fab_bg_mini:I

    goto :goto_0
.end method
