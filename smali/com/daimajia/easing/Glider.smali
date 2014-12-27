.class public Lcom/daimajia/easing/Glider;
.super Ljava/lang/Object;
.source "Glider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glide(Lcom/daimajia/easing/Skill;FLcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "skill"    # Lcom/daimajia/easing/Skill;
    .param p1, "duration"    # F
    .param p2, "propertyValuesHolder"    # Lcom/nineoldandroids/animation/PropertyValuesHolder;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/daimajia/easing/Skill;->getMethod(F)Lcom/daimajia/easing/BaseEasingMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 48
    return-object p2
.end method

.method public static glide(Lcom/daimajia/easing/Skill;FLcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .param p0, "skill"    # Lcom/daimajia/easing/Skill;
    .param p1, "duration"    # F
    .param p2, "animator"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/daimajia/easing/Glider;->glide(Lcom/daimajia/easing/Skill;FLcom/nineoldandroids/animation/ValueAnimator;[Lcom/daimajia/easing/BaseEasingMethod$EasingListener;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs glide(Lcom/daimajia/easing/Skill;FLcom/nineoldandroids/animation/ValueAnimator;[Lcom/daimajia/easing/BaseEasingMethod$EasingListener;)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .param p0, "skill"    # Lcom/daimajia/easing/Skill;
    .param p1, "duration"    # F
    .param p2, "animator"    # Lcom/nineoldandroids/animation/ValueAnimator;
    .param p3, "listeners"    # [Lcom/daimajia/easing/BaseEasingMethod$EasingListener;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/daimajia/easing/Skill;->getMethod(F)Lcom/daimajia/easing/BaseEasingMethod;

    move-result-object v0

    .line 39
    .local v0, "t":Lcom/daimajia/easing/BaseEasingMethod;
    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {v0, p3}, Lcom/daimajia/easing/BaseEasingMethod;->addEasingListeners([Lcom/daimajia/easing/BaseEasingMethod$EasingListener;)V

    .line 42
    :cond_0
    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 43
    return-object p2
.end method
