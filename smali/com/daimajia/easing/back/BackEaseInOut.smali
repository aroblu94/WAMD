.class public Lcom/daimajia/easing/back/BackEaseInOut;
.super Lcom/daimajia/easing/BaseEasingMethod;
.source "BackEaseInOut.java"


# instance fields
.field private s:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/daimajia/easing/BaseEasingMethod;-><init>(F)V

    .line 31
    const v0, 0x3fd9cd60

    iput v0, p0, Lcom/daimajia/easing/back/BackEaseInOut;->s:F

    .line 35
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "duration"    # F
    .param p2, "back"    # F

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/daimajia/easing/back/BackEaseInOut;-><init>(F)V

    .line 39
    iput p2, p0, Lcom/daimajia/easing/back/BackEaseInOut;->s:F

    .line 40
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
    const-wide v6, 0x3ff8666666666666L

    const/high16 v5, 0x3f800000

    const/high16 v4, 0x40000000

    .line 44
    div-float v0, p4, v4

    div-float/2addr p1, v0

    cmpg-float v0, p1, v5

    if-gez v0, :cond_0

    div-float v0, p3, v4

    mul-float v1, p1, p1

    iget v2, p0, Lcom/daimajia/easing/back/BackEaseInOut;->s:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, p0, Lcom/daimajia/easing/back/BackEaseInOut;->s:F

    add-float/2addr v2, v5

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/daimajia/easing/back/BackEaseInOut;->s:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    div-float v0, p3, v4

    sub-float/2addr p1, v4

    mul-float v1, p1, p1

    iget v2, p0, Lcom/daimajia/easing/back/BackEaseInOut;->s:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, p0, Lcom/daimajia/easing/back/BackEaseInOut;->s:F

    add-float/2addr v2, v5

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/daimajia/easing/back/BackEaseInOut;->s:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
