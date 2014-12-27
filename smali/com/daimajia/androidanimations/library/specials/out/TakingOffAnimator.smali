.class public Lcom/daimajia/androidanimations/library/specials/out/TakingOffAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "TakingOffAnimator.java"


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
    .locals 8
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    .line 13
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/specials/out/TakingOffAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    sget-object v3, Lcom/daimajia/easing/Skill;->QuintEaseOut:Lcom/daimajia/easing/Skill;

    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/specials/out/TakingOffAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {p1, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/daimajia/easing/Glider;->glide(Lcom/daimajia/easing/Skill;FLcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/daimajia/easing/Skill;->QuintEaseOut:Lcom/daimajia/easing/Skill;

    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/specials/out/TakingOffAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {p1, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/daimajia/easing/Glider;->glide(Lcom/daimajia/easing/Skill;FLcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/daimajia/easing/Skill;->QuintEaseOut:Lcom/daimajia/easing/Skill;

    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/specials/out/TakingOffAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v3, v4

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/daimajia/easing/Glider;->glide(Lcom/daimajia/easing/Skill;FLcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 18
    return-void

    .line 13
    :array_0
    .array-data 4
        0x3f800000
        0x3fc00000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x3fc00000
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
