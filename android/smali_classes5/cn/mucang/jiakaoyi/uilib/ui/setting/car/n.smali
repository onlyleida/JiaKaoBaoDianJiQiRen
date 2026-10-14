.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/car/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/n;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/n;->b:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/n;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/n;->b:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;->p(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;Landroid/view/View;)V

    return-void
.end method
