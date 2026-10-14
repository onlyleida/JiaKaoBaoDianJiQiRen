.class public final synthetic Lcn/mucang/jiakaoyi/uilib/debug/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/b;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/b;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->u(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Ljava/util/ArrayList;)V

    return-void
.end method
