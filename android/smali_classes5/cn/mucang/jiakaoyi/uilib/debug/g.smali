.class public final synthetic Lcn/mucang/jiakaoyi/uilib/debug/g;
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

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/g;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/g;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    check-cast p1, Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->z(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Ljava/util/HashSet;)V

    return-void
.end method
