.class public final synthetic Lcn/mucang/jiakaoyi/uilib/socket/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/m;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/m;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->onConnect()V

    return-void
.end method
