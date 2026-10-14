.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/car/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/e;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/e;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->A(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j;)V

    return-void
.end method
