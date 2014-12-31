.class Lninja/vextil/ConversationsLayout$2;
.super Ljava/lang/Object;
.source "ConversationsLayout.java"

# interfaces
.implements Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/ConversationsLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lninja/vextil/ConversationsLayout;


# direct methods
.method constructor <init>(Lninja/vextil/ConversationsLayout;)V
    .locals 0
    .param p1, "this$0"    # Lninja/vextil/ConversationsLayout;

    .prologue
    .line 28
    iput-object p1, p0, Lninja/vextil/ConversationsLayout$2;->this$0:Lninja/vextil/ConversationsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuCollapsed()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lninja/vextil/ConversationsLayout$2;->this$0:Lninja/vextil/ConversationsLayout;

    iget-object v0, v0, Lninja/vextil/ConversationsLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lninja/vextil/ConversationsLayout$2$1;

    invoke-direct {v1, p0}, Lninja/vextil/ConversationsLayout$2$1;-><init>(Lninja/vextil/ConversationsLayout$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 43
    return-void
.end method

.method public onMenuExpanded()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lninja/vextil/ConversationsLayout$2;->this$0:Lninja/vextil/ConversationsLayout;

    iget-object v0, v0, Lninja/vextil/ConversationsLayout;->mOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lninja/vextil/ConversationsLayout$2;->this$0:Lninja/vextil/ConversationsLayout;

    iget-object v0, v0, Lninja/vextil/ConversationsLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 33
    return-void
.end method
