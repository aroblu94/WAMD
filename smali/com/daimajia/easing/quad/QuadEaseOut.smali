.class public Lcom/daimajia/easing/quad/QuadEaseOut;
.super Lcom/daimajia/easing/BaseEasingMethod;
.source "QuadEaseOut.java"


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
    .locals 2
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    .line 36
    neg-float v0, p3

    div-float/2addr p1, p4

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
