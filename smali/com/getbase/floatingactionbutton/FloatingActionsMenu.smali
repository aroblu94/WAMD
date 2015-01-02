.class public Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final COLLAPSED_PLUS_ROTATION:F = 0.0f

.field private static final EXPANDED_PLUS_ROTATION:F = 135.0f

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_LEFT:I = 0x2

.field public static final EXPAND_RIGHT:I = 0x3

.field public static final EXPAND_UP:I

.field private static sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

.field private static sCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private static sExpandInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

.field private mAddButtonColorNormal:I

.field private mAddButtonColorPressed:I

.field private mAddButtonPlusColor:I

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCollapseAnimation:Landroid/animation/AnimatorSet;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandDirection:I

.field private mExpanded:Z

.field private mLabelsMargin:I

.field private mLabelsStyle:I

.field private mLabelsVerticalOffset:I

.field private mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 358
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 359
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 360
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x12c

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 46
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v2, 0x12c

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 46
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 24
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 24
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    return v0
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 24
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    return v0
.end method

.method static synthetic access$200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 24
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    return v0
.end method

.method static synthetic access$302(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .param p1, "x1"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private adjustForOvershoot(I)I
    .locals 1
    .param p1, "dimension"    # I

    .prologue
    .line 236
    mul-int/lit8 v0, p1, 0xc

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private createAddButton(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 158
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    sget v1, Lcom/getbase/floatingactionbutton/R$id;->fab_expand_menu_button:I

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setId(I)V

    .line 159
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    new-instance v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;

    invoke-direct {v1, p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method private createLabels()V
    .locals 8

    .prologue
    sget v7, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    .line 424
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-direct {v1, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 426
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v2, v5, :cond_2

    .line 427
    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 428
    .local v0, "button":Lcom/getbase/floatingactionbutton/FloatingActionButton;
    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v0, v5, :cond_0

    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {v0, v7}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 426
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 434
    .local v3, "label":Landroid/widget/TextView;
    invoke-virtual {p0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 436
    invoke-virtual {v0, v7, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 437
    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 439
    .end local v0    # "button":Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private expandsHorizontally()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    sget v5, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_actions_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    .line 75
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_labels_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    .line 76
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    .line 78
    sget-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "attr":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    .line 80
    const/4 v1, 0x1

    const v2, 0x1060013

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 81
    const v1, 0x1060012

    invoke-direct {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 82
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    .line 83
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V

    .line 91
    return-void
.end method


# virtual methods
.method public addButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1, "button"    # Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .prologue
    .line 170
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;I)V

    .line 171
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 173
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    .line 176
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public collapse()V
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 444
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 445
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 447
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    .line 451
    :cond_0
    return-void
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 464
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 465
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 467
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    .line 471
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 340
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 345
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 350
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 415
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 416
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 418
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    .line 421
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 336
    :cond_0
    return-void

    .line 244
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v23, v0

    if-nez v23, :cond_1

    const/4 v12, 0x1

    .line 246
    .local v12, "expandUp":Z
    :goto_0
    if-eqz v12, :cond_2

    sub-int v23, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v24

    sub-int v6, v23, v24

    .line 247
    .local v6, "addButtonY":I
    :goto_1
    sub-int v23, p4, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v24

    sub-int v4, v23, v24

    .line 248
    .local v4, "addButtonLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v24

    add-int v24, v24, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v25

    add-int v25, v25, v6

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v4, v6, v1, v2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    move/from16 v23, v0

    sub-int v19, v4, v23

    .line 252
    .local v19, "labelsRight":I
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v23, v0

    sub-int v21, v6, v23

    .line 256
    .local v21, "nextY":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    move/from16 v23, v0

    add-int/lit8 v14, v23, -0x1

    .local v14, "i":I
    :goto_3
    if-ltz v14, :cond_0

    .line 257
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 259
    .local v7, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v7, v0, :cond_4

    .line 256
    :goto_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 244
    .end local v4    # "addButtonLeft":I
    .end local v6    # "addButtonY":I
    .end local v7    # "child":Landroid/view/View;
    .end local v12    # "expandUp":Z
    .end local v14    # "i":I
    .end local v19    # "labelsRight":I
    .end local v21    # "nextY":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 246
    .restart local v12    # "expandUp":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 252
    .restart local v4    # "addButtonLeft":I
    .restart local v6    # "addButtonY":I
    .restart local v19    # "labelsRight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v23, v0

    .line 254
    invoke-virtual/range {v23 .. v23}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v24, v0

    add-int v21, v23, v24

    goto :goto_2

    .line 261
    .restart local v7    # "child":Landroid/view/View;
    .restart local v14    # "i":I
    .restart local v21    # "nextY":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v23

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v8, v4, v23

    .line 262
    .local v8, "childX":I
    if-eqz v12, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v9, v21, v23

    .line 263
    .local v9, "childY":I
    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 265
    sub-int v23, v6, v9

    move/from16 v0, v23

    int-to-float v10, v0

    .line 266
    .local v10, "collapsedTranslation":F
    const/4 v13, 0x0

    .line 268
    .local v13, "expandedTranslation":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move/from16 v23, v13

    :goto_6
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 269
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    const/high16 v23, 0x3f800000

    :goto_7
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 271
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 272
    .local v22, "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v22 .. v22}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v13, v24, v25

    const/16 v25, 0x1

    aput v10, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 273
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v22 .. v22}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v10, v24, v25

    const/16 v25, 0x1

    aput v13, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 274
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 276
    sget v23, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 277
    .local v15, "label":Landroid/view/View;
    if-eqz v15, :cond_5

    .line 278
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v16, v19, v23

    .line 279
    .local v16, "labelLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v18, v23, v24

    .line 281
    .local v18, "labelTop":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v18

    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 283
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move/from16 v23, v13

    :goto_8
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 284
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    const/high16 v23, 0x3f800000

    :goto_9
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setAlpha(F)V

    .line 286
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 287
    .local v17, "labelParams":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v17 .. v17}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v13, v24, v25

    const/16 v25, 0x1

    aput v10, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 288
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v17 .. v17}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v10, v24, v25

    const/16 v25, 0x1

    aput v13, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 289
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 292
    .end local v16    # "labelLeft":I
    .end local v17    # "labelParams":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    .end local v18    # "labelTop":I
    :cond_5
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v23, v0

    sub-int v21, v9, v23

    .line 294
    :goto_a
    goto/16 :goto_4

    .end local v9    # "childY":I
    .end local v10    # "collapsedTranslation":F
    .end local v13    # "expandedTranslation":F
    .end local v15    # "label":Landroid/view/View;
    .end local v22    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_6
    move/from16 v9, v21

    .line 262
    goto/16 :goto_5

    .restart local v9    # "childY":I
    .restart local v10    # "collapsedTranslation":F
    .restart local v13    # "expandedTranslation":F
    :cond_7
    move/from16 v23, v10

    .line 268
    goto/16 :goto_6

    .line 269
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_7

    .restart local v15    # "label":Landroid/view/View;
    .restart local v16    # "labelLeft":I
    .restart local v18    # "labelTop":I
    .restart local v22    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_9
    move/from16 v23, v10

    .line 283
    goto :goto_8

    .line 284
    :cond_a
    const/16 v23, 0x0

    goto :goto_9

    .line 294
    .end local v16    # "labelLeft":I
    .end local v18    # "labelTop":I
    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v24, v0

    add-int v21, v23, v24

    goto :goto_a

    .line 300
    .end local v4    # "addButtonLeft":I
    .end local v6    # "addButtonY":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childX":I
    .end local v9    # "childY":I
    .end local v10    # "collapsedTranslation":F
    .end local v12    # "expandUp":Z
    .end local v13    # "expandedTranslation":F
    .end local v14    # "i":I
    .end local v15    # "label":Landroid/view/View;
    .end local v19    # "labelsRight":I
    .end local v21    # "nextY":I
    .end local v22    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/4 v11, 0x1

    .line 302
    .local v11, "expandLeft":Z
    :goto_b
    if-eqz v11, :cond_d

    sub-int v23, p4, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v24

    sub-int v5, v23, v24

    .line 303
    .local v5, "addButtonX":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 305
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v23, v0

    sub-int v20, v5, v23

    .line 309
    .local v20, "nextX":I
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    move/from16 v23, v0

    add-int/lit8 v14, v23, -0x1

    .restart local v14    # "i":I
    :goto_e
    if-ltz v14, :cond_0

    .line 310
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 312
    .restart local v7    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v7, v0, :cond_f

    .line 309
    :goto_f
    add-int/lit8 v14, v14, -0x1

    goto :goto_e

    .line 300
    .end local v5    # "addButtonX":I
    .end local v7    # "child":Landroid/view/View;
    .end local v11    # "expandLeft":Z
    .end local v14    # "i":I
    .end local v20    # "nextX":I
    :cond_c
    const/4 v11, 0x0

    goto :goto_b

    .line 302
    .restart local v11    # "expandLeft":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 305
    .restart local v5    # "addButtonX":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v23, v0

    .line 307
    invoke-virtual/range {v23 .. v23}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v23

    add-int v23, v23, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v24, v0

    add-int v20, v23, v24

    goto :goto_d

    .line 314
    .restart local v7    # "child":Landroid/view/View;
    .restart local v14    # "i":I
    .restart local v20    # "nextX":I
    :cond_f
    if-eqz v11, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v8, v20, v23

    .line 315
    .restart local v8    # "childX":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v23

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v9, v23, 0x2

    .line 316
    .restart local v9    # "childY":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 318
    sub-int v23, v5, v8

    move/from16 v0, v23

    int-to-float v10, v0

    .line 319
    .restart local v10    # "collapsedTranslation":F
    const/4 v13, 0x0

    .line 321
    .restart local v13    # "expandedTranslation":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    move/from16 v23, v13

    :goto_11
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    const/high16 v23, 0x3f800000

    :goto_12
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 324
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 325
    .restart local v22    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v22 .. v22}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v13, v24, v25

    const/16 v25, 0x1

    aput v10, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 326
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v22 .. v22}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v10, v24, v25

    const/16 v25, 0x1

    aput v13, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 327
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 329
    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v23, v0

    sub-int v20, v8, v23

    .line 331
    :goto_13
    goto/16 :goto_f

    .end local v8    # "childX":I
    .end local v9    # "childY":I
    .end local v10    # "collapsedTranslation":F
    .end local v13    # "expandedTranslation":F
    .end local v22    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_10
    move/from16 v8, v20

    .line 314
    goto/16 :goto_10

    .restart local v8    # "childX":I
    .restart local v9    # "childY":I
    .restart local v10    # "collapsedTranslation":F
    .restart local v13    # "expandedTranslation":F
    :cond_11
    move/from16 v23, v10

    .line 321
    goto :goto_11

    .line 322
    :cond_12
    const/16 v23, 0x0

    goto :goto_12

    .line 331
    .restart local v22    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_13
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v23, v23, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v24, v0

    add-int v20, v23, v24

    goto :goto_13

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->measureChildren(II)V

    .line 186
    const/4 v5, 0x0

    .line 187
    .local v5, "width":I
    const/4 v1, 0x0

    .line 189
    .local v1, "height":I
    const/4 v4, 0x0

    .line 191
    .local v4, "maxLabelWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v2, v6, :cond_1

    .line 192
    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "child":Landroid/view/View;
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v6, :pswitch_data_0

    .line 207
    :goto_1
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    sget v6, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 209
    .local v3, "label":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 191
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 199
    goto :goto_1

    .line 202
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 215
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v6

    if-nez v6, :cond_2

    .line 216
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 219
    :cond_2
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v6, :pswitch_data_1

    .line 232
    :goto_2
    invoke-virtual {p0, v5, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setMeasuredDimension(II)V

    .line 233
    return-void

    .line 222
    :pswitch_2
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 223
    invoke-direct {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v1

    .line 224
    goto :goto_2

    .line 227
    :pswitch_3
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 228
    invoke-direct {p0, v5}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v5

    goto :goto_2

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 219
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 488
    instance-of v1, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 489
    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    .line 490
    .local v0, "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    iget-boolean v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 492
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    if-eqz v1, :cond_0

    .line 493
    iget-object v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    iget-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x43070000

    :goto_0
    invoke-virtual {v2, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->setRotation(F)V

    .line 496
    :cond_0
    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 500
    .end local v0    # "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    :goto_1
    return-void

    .line 493
    .restart local v0    # "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 498
    .end local v0    # "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 479
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 480
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 481
    .local v0, "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    iget-boolean v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    iput-boolean v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    .line 483
    return-object v0
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    .line 95
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expand()V

    goto :goto_0
.end method
