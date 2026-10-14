.class final Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;->e(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iput p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->gearType:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
