.class public Lcom/daimajia/easing/expo/ExpoEaseInOut;
.super Lcom/daimajia/easing/BaseEasingMethod;
.source "ExpoEaseInOut.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/daimajia/easing/BaseEasingMethod;-><init>(F)V

    .line 32
    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 8
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L

    const/high16 v2, 0x3f800000

    const/high16 v4, 0x40000000

    .line 36
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 37
    :cond_0
    cmpl-float v0, p1, p4

    if-nez v0, :cond_1

    add-float v0, p2, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    div-float v0, p4, v4

    div-float/2addr p1, v0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    div-float v0, p3, v4

    const/high16 v1, 0x41200000

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    div-float v0, p3, v4

    const/high16 v1, -0x3ee00000

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
