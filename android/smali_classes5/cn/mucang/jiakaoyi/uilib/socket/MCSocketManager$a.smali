.class Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->b(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;I)I

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$a;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->e(Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;)V

    return-void
.end method
