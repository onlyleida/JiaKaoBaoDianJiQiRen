.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/config/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;->d:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/a;->d:Lkotlin/jvm/b/a;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->k(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method
