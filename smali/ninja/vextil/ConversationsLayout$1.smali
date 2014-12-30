.class Lninja/vextil/ConversationsLayout$1;
.super Ljava/lang/Object;
.source "ConversationsLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 23
    iput-object p1, p0, Lninja/vextil/ConversationsLayout$1;->this$0:Lninja/vextil/ConversationsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    iget-object v0, p0, Lninja/vextil/ConversationsLayout$1;->this$0:Lninja/vextil/ConversationsLayout;

    iget-object v0, v0, Lninja/vextil/ConversationsLayout;->mFABMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
