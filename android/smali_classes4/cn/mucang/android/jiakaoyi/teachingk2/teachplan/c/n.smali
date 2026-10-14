.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;->c:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;->c:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    invoke-static {v0, v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;->j(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/widget/RadioGroup;I)V

    return-void
.end method
