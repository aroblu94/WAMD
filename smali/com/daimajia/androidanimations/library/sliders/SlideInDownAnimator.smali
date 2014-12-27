.class public Lcom/daimajia/androidanimations/library/sliders/SlideInDownAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "SlideInDownAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public prepare(Landroid/view/View;)V
    .locals 8
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 36
    .local v0, "distance":I
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/sliders/SlideInDownAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v1

    new-array v2, v5, [Lcom/nineoldandroids/animation/Animator;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "translationY"

    new-array v4, v5, [F

    neg-int v5, v0

    int-to-float v5, v5

    aput v5, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 40
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
