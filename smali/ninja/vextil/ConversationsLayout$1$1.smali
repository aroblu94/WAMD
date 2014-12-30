.class Lninja/vextil/ConversationsLayout$1$1;
.super Ljava/lang/Object;
.source "ConversationsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/ConversationsLayout$1;->onMenuCollapsed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lninja/vextil/ConversationsLayout$1;


# direct methods
.method constructor <init>(Lninja/vextil/ConversationsLayout$1;)V
    .locals 0
    .param p1, "this$1"    # Lninja/vextil/ConversationsLayout$1;

    .prologue
    .line 32
    iput-object p1, p0, Lninja/vextil/ConversationsLayout$1$1;->this$1:Lninja/vextil/ConversationsLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lninja/vextil/ConversationsLayout$1$1;->this$1:Lninja/vextil/ConversationsLayout$1;

    iget-object v0, v0, Lninja/vextil/ConversationsLayout$1;->this$0:Lninja/vextil/ConversationsLayout;

    iget-object v0, v0, Lninja/vextil/ConversationsLayout;->mOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    return-void
.end method
