.class public final Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/androidanimations/library/YoYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationComposer"
.end annotation


# instance fields
.field private animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private delay:J

.field private duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private target:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/daimajia/androidanimations/library/BaseViewAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    .line 70
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration:J

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->delay:J

    .line 80
    iput-object p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/daimajia/androidanimations/library/BaseViewAnimator;Lcom/daimajia/androidanimations/library/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    .param p2, "x1"    # Lcom/daimajia/androidanimations/library/YoYo$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;-><init>(Lcom/daimajia/androidanimations/library/BaseViewAnimator;)V

    return-void
.end method

.method private constructor <init>(Lcom/daimajia/androidanimations/library/Techniques;)V
    .locals 2
    .param p1, "techniques"    # Lcom/daimajia/androidanimations/library/Techniques;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    .line 70
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration:J

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->delay:J

    .line 76
    invoke-virtual {p1}, Lcom/daimajia/androidanimations/library/Techniques;->getAnimator()Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/daimajia/androidanimations/library/Techniques;Lcom/daimajia/androidanimations/library/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/daimajia/androidanimations/library/Techniques;
    .param p2, "x1"    # Lcom/daimajia/androidanimations/library/YoYo$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;-><init>(Lcom/daimajia/androidanimations/library/Techniques;)V

    return-void
.end method

.method static synthetic access$000(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)J
    .locals 2
    .param p0, "x0"    # Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)J
    .locals 2
    .param p0, "x0"    # Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->delay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->target:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public delay(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->delay:J

    .line 90
    return-object p0
.end method

.method public duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration:J

    .line 85
    return-object p0
.end method

.method public interpolate(Landroid/view/animation/Interpolator;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;

    .line 95
    return-object p0
.end method

.method public playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 105
    iput-object p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->target:Landroid/view/View;

    .line 106
    new-instance v0, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    new-instance v1, Lcom/daimajia/androidanimations/library/YoYo;

    invoke-direct {v1, p0, v3}, Lcom/daimajia/androidanimations/library/YoYo;-><init>(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;Lcom/daimajia/androidanimations/library/YoYo$1;)V

    # invokes: Lcom/daimajia/androidanimations/library/YoYo;->play()Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    invoke-static {v1}, Lcom/daimajia/androidanimations/library/YoYo;->access$900(Lcom/daimajia/androidanimations/library/YoYo;)Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->target:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;-><init>(Lcom/daimajia/androidanimations/library/BaseViewAnimator;Landroid/view/View;Lcom/daimajia/androidanimations/library/YoYo$1;)V

    return-object v0
.end method

.method public withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 1
    .param p1, "listener"    # Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object p0
.end method
