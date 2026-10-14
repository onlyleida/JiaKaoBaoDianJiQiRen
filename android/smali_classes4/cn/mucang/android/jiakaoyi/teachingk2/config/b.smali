.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/config/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/b;->c:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/b;->c:Lkotlin/jvm/b/a;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->l(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method
