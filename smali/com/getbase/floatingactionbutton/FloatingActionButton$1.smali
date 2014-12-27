.class Lcom/getbase/floatingactionbutton/FloatingActionButton$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionButton;->createInnerStrokesDrawable(F)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 281
    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    int-to-float v4, p2

    new-array v5, v8, [I

    aput v6, v5, v6

    const/4 v6, 0x1

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_BLACK:I
    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->access$000()I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd
        0x3f800000
    .end array-data
.end method
