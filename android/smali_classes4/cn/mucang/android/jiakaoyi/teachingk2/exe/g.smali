.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;->c:Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;->c:Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->l(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method
