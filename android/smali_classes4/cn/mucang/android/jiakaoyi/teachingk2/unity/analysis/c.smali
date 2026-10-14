.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/c;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/c;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;->a(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;Landroid/content/DialogInterface;)V

    return-void
.end method
