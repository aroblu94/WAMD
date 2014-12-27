.class public Lcom/daimajia/androidanimations/library/zooming_exits/ZoomOutDownAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "ZoomOutDownAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected prepare(Landroid/view/View;)V
    .locals 11
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 37
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 38
    .local v0, "distance":I
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/zooming_exits/ZoomOutDownAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "translationY"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    const/high16 v6, -0x3d900000

    aput v6, v5, v9

    int-to-float v6, v0

    aput v6, v5, v10

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 44
    return-void

    .line 38
    :array_0
    .array-data 4
        0x3f800000
        0x3f800000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x3ef33333
        0x3dcccccd
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x3ef33333
        0x3dcccccd
    .end array-data
.end method
