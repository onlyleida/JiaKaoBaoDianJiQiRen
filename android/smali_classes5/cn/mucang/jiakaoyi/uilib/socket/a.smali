.class public final synthetic Lcn/mucang/jiakaoyi/uilib/socket/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a;->b:Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;->e(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V

    return-void
.end method
