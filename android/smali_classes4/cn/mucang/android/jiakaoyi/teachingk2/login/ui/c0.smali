.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c0;->b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/c0;->b:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->n(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/view/View;)V

    return-void
.end method
