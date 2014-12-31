.class public Lninja/vextil/ConversationsLayout;
.super Landroid/widget/FrameLayout;
.source "ConversationsLayout.java"


# instance fields
.field mFABMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field mOverlay:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lninja/vextil/ConversationsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lninja/vextil/ConversationsLayout;->mOverlay:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lninja/vextil/ConversationsLayout;->mOverlay:Landroid/view/View;

    new-instance v1, Lninja/vextil/ConversationsLayout$1;

    invoke-direct {v1, p0}, Lninja/vextil/ConversationsLayout$1;-><init>(Lninja/vextil/ConversationsLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lninja/vextil/ConversationsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v0, p0, Lninja/vextil/ConversationsLayout;->mFABMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 28
    iget-object v0, p0, Lninja/vextil/ConversationsLayout;->mFABMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v1, Lninja/vextil/ConversationsLayout$2;

    invoke-direct {v1, p0}, Lninja/vextil/ConversationsLayout$2;-><init>(Lninja/vextil/ConversationsLayout;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V

    .line 45
    return-void
.end method
