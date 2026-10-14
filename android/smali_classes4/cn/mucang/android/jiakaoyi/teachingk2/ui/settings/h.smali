.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;

.field public final synthetic b:[Ljava/lang/Float;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;[Ljava/lang/Float;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;->b:[Ljava/lang/Float;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;->b:[Ljava/lang/Float;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;

    invoke-static {v0, v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;->p(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;[Ljava/lang/Float;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
