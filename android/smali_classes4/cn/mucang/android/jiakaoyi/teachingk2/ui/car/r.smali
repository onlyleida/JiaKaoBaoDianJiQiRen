.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/r;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/r;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity$a;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V

    return-void
.end method
