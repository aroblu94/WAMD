.class Lninja/vextil/ConversationsLayout$2$1;
.super Ljava/lang/Object;
.source "ConversationsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/ConversationsLayout$2;->onMenuCollapsed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lninja/vextil/ConversationsLayout$2;


# direct methods
.method constructor <init>(Lninja/vextil/ConversationsLayout$2;)V
    .locals 0
    .param p1, "this$1"    # Lninja/vextil/ConversationsLayout$2;

    .prologue
    .line 37
    iput-object p1, p0, Lninja/vextil/ConversationsLayout$2$1;->this$1:Lninja/vextil/ConversationsLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lninja/vextil/ConversationsLayout$2$1;->this$1:Lninja/vextil/ConversationsLayout$2;

    iget-object v0, v0, Lninja/vextil/ConversationsLayout$2;->this$0:Lninja/vextil/ConversationsLayout;

    iget-object v0, v0, Lninja/vextil/ConversationsLayout;->mOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void
.end method
