.class public Lcn/mucang/jiakaoyi/uilib/socket/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

.field private static final b:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/socket/t;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;-><init>(Z)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/socket/t;->b:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    return-void
.end method

.method public static a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/t;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    return-object v0
.end method

.method public static b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/t;->b:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    return-object v0
.end method
