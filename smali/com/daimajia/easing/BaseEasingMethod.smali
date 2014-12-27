.class public abstract Lcom/daimajia/easing/BaseEasingMethod;
.super Ljava/lang/Object;
.source "BaseEasingMethod.java"

# interfaces
.implements Lcom/nineoldandroids/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/daimajia/easing/BaseEasingMethod$EasingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nineoldandroids/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDuration:F

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/daimajia/easing/BaseEasingMethod$EasingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/easing/BaseEasingMethod;->mListeners:Ljava/util/ArrayList;

    .line 59
    iput p1, p0, Lcom/daimajia/easing/BaseEasingMethod;->mDuration:F

    .line 60
    return-void
.end method


# virtual methods
.method public addEasingListener(Lcom/daimajia/easing/BaseEasingMethod$EasingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/daimajia/easing/BaseEasingMethod$EasingListener;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/daimajia/easing/BaseEasingMethod;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public varargs addEasingListeners([Lcom/daimajia/easing/BaseEasingMethod$EasingListener;)V
    .locals 5
    .param p1, "ls"    # [Lcom/daimajia/easing/BaseEasingMethod$EasingListener;

    .prologue
    .line 45
    move-object v0, p1

    .local v0, "arr$":[Lcom/daimajia/easing/BaseEasingMethod$EasingListener;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 46
    .local v2, "l":Lcom/daimajia/easing/BaseEasingMethod$EasingListener;
    iget-object v4, p0, Lcom/daimajia/easing/BaseEasingMethod;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "l":Lcom/daimajia/easing/BaseEasingMethod$EasingListener;
    :cond_0
    return-void
.end method

.method public abstract calculate(FFFF)Ljava/lang/Float;
.end method

.method public clearEasingListeners()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/daimajia/easing/BaseEasingMethod;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    return-void
.end method

.method public final evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Number;
    .param p3, "endValue"    # Ljava/lang/Number;

    .prologue
    .line 69
    iget v7, p0, Lcom/daimajia/easing/BaseEasingMethod;->mDuration:F

    mul-float v1, v7, p1

    .line 70
    .local v1, "t":F
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 71
    .local v3, "b":F
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    sub-float v4, v7, v8

    .line 72
    .local v4, "c":F
    iget v5, p0, Lcom/daimajia/easing/BaseEasingMethod;->mDuration:F

    .line 73
    .local v5, "d":F
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/daimajia/easing/BaseEasingMethod;->calculate(FFFF)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 74
    .local v2, "result":F
    iget-object v7, p0, Lcom/daimajia/easing/BaseEasingMethod;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/easing/BaseEasingMethod$EasingListener;

    .line 75
    .local v0, "l":Lcom/daimajia/easing/BaseEasingMethod$EasingListener;
    invoke-interface/range {v0 .. v5}, Lcom/daimajia/easing/BaseEasingMethod$EasingListener;->on(FFFFF)V

    goto :goto_0

    .line 77
    .end local v0    # "l":Lcom/daimajia/easing/BaseEasingMethod$EasingListener;
    :cond_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # F
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Number;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/daimajia/easing/BaseEasingMethod;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public removeEasingListener(Lcom/daimajia/easing/BaseEasingMethod$EasingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/daimajia/easing/BaseEasingMethod$EasingListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/daimajia/easing/BaseEasingMethod;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/daimajia/easing/BaseEasingMethod;->mDuration:F

    .line 64
    return-void
.end method
