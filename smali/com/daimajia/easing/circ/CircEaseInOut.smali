.class public Lcom/daimajia/easing/circ/CircEaseInOut;
.super Lcom/daimajia/easing/BaseEasingMethod;
.source "CircEaseInOut.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/daimajia/easing/BaseEasingMethod;-><init>(F)V

    .line 33
    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 5
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    const/high16 v1, 0x40000000

    const/high16 v4, 0x3f800000

    .line 37
    div-float v0, p4, v1

    div-float/2addr p1, v0

    cmpg-float v0, p1, v4

    if-gez v0, :cond_0

    .line 38
    neg-float v0, p3

    div-float/2addr v0, v1

    mul-float v1, p1, p1

    sub-float v1, v4, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    div-float v0, p3, v1

    sub-float/2addr p1, v1

    mul-float v1, p1, p1

    sub-float v1, v4, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
