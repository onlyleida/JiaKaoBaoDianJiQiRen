.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/exe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/j;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/exe/j;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/j;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/j;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/j;->e(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method
