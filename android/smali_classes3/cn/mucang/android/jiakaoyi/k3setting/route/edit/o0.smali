.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/c;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/o0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/o0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->q(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
