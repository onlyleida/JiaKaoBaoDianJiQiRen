.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/j;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/j;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/model/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->i(Lcn/mucang/android/jiakaoyi/hpmap/model/a;)V

    return-void
.end method
