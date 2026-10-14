.class final Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$examSiteId$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$examSiteId$2;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 4

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$examSiteId$2;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key.examSiteId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$examSiteId$2;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
