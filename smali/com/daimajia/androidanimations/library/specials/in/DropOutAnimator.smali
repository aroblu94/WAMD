.class public Lcom/daimajia/androidanimations/library/specials/in/DropOutAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "DropOutAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected prepare(Landroid/view/View;)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 14
    .local v0, "distance":I
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/specials/in/DropOutAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v1

    new-array v2, v6, [Lcom/nineoldandroids/animation/Animator;

    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/daimajia/easing/Skill;->BounceEaseOut:Lcom/daimajia/easing/Skill;

    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/specials/in/DropOutAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    const-string v5, "translationY"

    new-array v6, v6, [F

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v6, v8

    const/4 v7, 0x0

    aput v7, v6, v9

    invoke-static {p1, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/daimajia/easing/Glider;->glide(Lcom/daimajia/easing/Skill;FLcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 18
    return-void

    .line 14
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
