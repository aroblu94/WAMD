.class public Lcom/daimajia/easing/elastic/ElasticEaseInOut;
.super Lcom/daimajia/easing/BaseEasingMethod;
.source "ElasticEaseInOut.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/daimajia/easing/BaseEasingMethod;-><init>(F)V

    .line 34
    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 9
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    const v8, 0x40c90fdb

    const/high16 v4, 0x40000000

    const-wide/high16 v6, 0x4000000000000000L

    const/high16 v5, 0x3f800000

    .line 38
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 43
    :goto_0
    return-object v3

    .line 38
    :cond_0
    div-float v3, p4, v4

    div-float/2addr p1, v3

    cmpl-float v3, p1, v4

    if-nez v3, :cond_1

    add-float v3, p2, p3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    .line 39
    :cond_1
    const v3, 0x3ee66667

    mul-float v1, p4, v3

    .line 40
    .local v1, "p":F
    move v0, p3

    .line 41
    .local v0, "a":F
    const/high16 v3, 0x40800000

    div-float v2, v1, v3

    .line 42
    .local v2, "s":F
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    const/high16 v3, -0x41000000

    const/high16 v4, 0x41200000

    sub-float/2addr p1, v5

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    mul-float v5, p1, p4

    sub-float/2addr v5, v2

    mul-float/2addr v5, v8

    div-float/2addr v5, v1

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    .line 43
    :cond_2
    const/high16 v3, -0x3ee00000

    sub-float/2addr p1, v5

    mul-float/2addr v3, p1

    float-to-double v4, v3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v0

    mul-float v4, p1, p4

    sub-float/2addr v4, v2

    mul-float/2addr v4, v8

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    add-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0
.end method
