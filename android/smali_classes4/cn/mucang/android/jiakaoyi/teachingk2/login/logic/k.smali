.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/k;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/k;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/graphics/Bitmap;)V

    return-void
.end method
