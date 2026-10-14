.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/m;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/m;->b:Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/m;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/m;->b:Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;->w(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/n;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ConfirmCarCodeDialogBinding;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    return-void
.end method
