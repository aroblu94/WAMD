.class public Lcom/daimajia/androidanimations/library/fading_exits/FadeOutLeftAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "FadeOutLeftAnimator.java"


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
    .locals 7
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 35
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/fading_exits/FadeOutLeftAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    new-array v1, v4, [Lcom/nineoldandroids/animation/Animator;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "translationX"

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 39
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
