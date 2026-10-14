.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g;->b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g;->b:Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->k(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    return-void
.end method
