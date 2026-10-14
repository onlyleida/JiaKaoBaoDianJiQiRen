.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/k;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/k;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/k;->b:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;->n(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    return-void
.end method
