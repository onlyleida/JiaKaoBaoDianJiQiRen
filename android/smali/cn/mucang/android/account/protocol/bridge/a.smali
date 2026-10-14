.class public final synthetic Lcn/mucang/android/account/protocol/bridge/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/j/h;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/protocol/bridge/UserJsBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/protocol/bridge/a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    iput-object p2, p0, Lcn/mucang/android/account/protocol/bridge/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/account/protocol/bridge/a;->a:Lcn/mucang/android/account/protocol/bridge/UserJsBridge;

    iget-object v1, p0, Lcn/mucang/android/account/protocol/bridge/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/account/protocol/bridge/UserJsBridge;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
