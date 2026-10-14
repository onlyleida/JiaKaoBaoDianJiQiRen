.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;->b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;->b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;->d(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)V

    return-void
.end method
