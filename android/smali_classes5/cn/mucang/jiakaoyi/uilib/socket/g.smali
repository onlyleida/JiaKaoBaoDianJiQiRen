.class public final synthetic Lcn/mucang/jiakaoyi/uilib/socket/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/r;

.field public final synthetic b:B

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/r;B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/g;->a:Lcn/mucang/jiakaoyi/uilib/socket/r;

    iput-byte p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/g;->b:B

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/g;->c:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/g;->a:Lcn/mucang/jiakaoyi/uilib/socket/r;

    iget-byte v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/g;->b:B

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/g;->c:[B

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->B(Lcn/mucang/jiakaoyi/uilib/socket/r;B[B)V

    return-void
.end method
