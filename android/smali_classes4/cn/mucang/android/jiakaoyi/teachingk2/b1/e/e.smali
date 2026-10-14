.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/e;->b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/e;->b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/w;->b(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    return-void
.end method
