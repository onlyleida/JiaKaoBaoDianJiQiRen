.class public final synthetic Lcn/mucang/jiakaoyi/uilib/socket/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/r;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/r;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/j;->a:Lcn/mucang/jiakaoyi/uilib/socket/r;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/j;->b:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/j;->a:Lcn/mucang/jiakaoyi/uilib/socket/r;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/j;->b:[B

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->A(Lcn/mucang/jiakaoyi/uilib/socket/r;[B)V

    return-void
.end method
