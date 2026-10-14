.class public Lcn/mucang/jiakaoyi/uilib/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/m/a;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/m/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getStepId()I

    move-result v3

    iget v4, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->min:I

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getStepId()I

    move-result v3

    iget v4, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->max:I

    if-gt v3, v4, :cond_1

    .line 5
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;-><init>()V

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Z)V

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static b(Landroid/database/Cursor;)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;-><init>()V

    const-string v1, "_id"

    .line 2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    const-string v1, "allow_user_set"

    .line 3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setAllowUserSet(Z)V

    const-string v1, "area_code"

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setAreaCode(Ljava/lang/String;)V

    const-string v1, "can_auto_judge"

    .line 5
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setCanAutoJudge(Z)V

    const-string v1, "code"

    .line 6
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setCode(I)V

    const-string v1, "deduct_score"

    .line 7
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setDeductScore(I)V

    const-string v1, "desc"

    .line 8
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setDesc(Ljava/lang/String;)V

    const-string v1, "exam_site_id"

    .line 9
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setExamSiteId(J)V

    const-string v1, "had_set_by_user"

    .line 10
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setHadSetByUser(Z)V

    const-string v1, "judge_type"

    .line 11
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setJudgeType(I)V

    const-string v1, "name"

    .line 12
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setName(Ljava/lang/String;)V

    const-string v1, "status"

    .line 13
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setStatus(I)V

    const-string v1, "step_id"

    .line 14
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setStepId(I)V

    const-string v1, "user_id"

    .line 15
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setUserId(Ljava/lang/String;)V

    const-string v1, "position"

    .line 16
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setPosition(I)V

    const-string v1, "rule_ids"

    .line 17
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setRuleIds(Ljava/lang/String;)V

    const-string v1, "use_mode"

    .line 18
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setUseMode(I)V

    return-object v0
.end method

.method private static c(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "t_deduct"

    const-string v2, "_id=?"

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static e(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "area_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deduct_score"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDesc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getExamSiteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "exam_site_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getJudgeType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "judge_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getStepId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "step_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->isAllowUserSet()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_user_set"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->isCanAutoJudge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "can_auto_judge"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->isHadSetByUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "had_set_by_user"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getRuleIds()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rule_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getUseMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "use_mode"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;J)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;
    .locals 8

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    monitor-exit v0

    return-object v2

    :cond_1
    const-string v6, "select * from t_deduct where exam_site_id=? and user_id=? and code=? order by position"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    aput-object v1, v7, v3

    aput-object p0, v7, v4

    invoke-static {v6, v7}, Lcn/mucang/jiakaoyi/uilib/m/a;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "select * from t_deduct where exam_site_id=? and code=? order by position"

    new-array v6, v4, [Ljava/lang/String;

    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v5

    aput-object p0, v6, v3

    invoke-static {v1, v6}, Lcn/mucang/jiakaoyi/uilib/m/a;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const-string p1, "select * from t_deduct where exam_site_id=? and code=?  order by position"

    new-array p2, v4, [Ljava/lang/String;

    const/16 v1, -0x3e7

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v5

    aput-object p0, p2, v3

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/m/a;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 10
    :cond_4
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 11
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    monitor-exit v0

    return-object p0

    .line 12
    :cond_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static g(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/m/a;->h(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static h(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x3e7

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/m/a;->j(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/m/a;->j(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/m/a;->i(J)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-static {p2, v1}, Lcn/mucang/jiakaoyi/uilib/m/a;->n(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    invoke-static {p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/m/a;->x(Ljava/util/List;J)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static i(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    aput-object v0, v3, v2

    const-string p0, "select * from t_deduct where exam_site_id=? and user_id=? order by position"

    invoke-static {p0, v3}, Lcn/mucang/jiakaoyi/uilib/m/a;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-array v0, v2, [Ljava/lang/String;

    .line 5
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "select * from t_deduct where exam_site_id=? order by position"

    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/m/a;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static j(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/m/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->a(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, -0x3e7

    .line 3
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "select * from t_deduct where exam_site_id=? order by position"

    invoke-static {v2, v1}, Lcn/mucang/jiakaoyi/uilib/m/a;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const-string v0, "deduct : \u672c\u5730\u57fa\u7840\u6570\u636e\u83b7\u53d6\u4e3a\u7a7a!!!!!"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->a(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static k(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return-object p0

    :cond_1
    const-string v1, "select * from t_deduct where exam_site_id=? and user_id=? order by position"

    new-array v2, v2, [Ljava/lang/String;

    .line 6
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/m/a;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    :goto_0
    const-string v1, "select * from t_deduct where exam_site_id=? and step_id <= ? and step_id >= ? order by position"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 7
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v4

    iget p0, p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->max:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v3

    iget p0, p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->min:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v1, v5}, Lcn/mucang/jiakaoyi/uilib/m/a;->m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static l(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/m/a;->e(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "t_deduct"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static varargs m(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->b()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    invoke-virtual {v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->b(Landroid/database/Cursor;)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 7
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object p0, v0

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 8
    :goto_1
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listDeduct \u62a5\u9519:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 10
    invoke-static {p0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 11
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0

    :catchall_3
    move-exception p1

    .line 12
    invoke-static {p0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 13
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method private static n(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private static o([Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;-><init>()V

    const-wide/16 v1, -0x3e7

    .line 2
    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setExamSiteId(J)V

    const/4 v1, 0x0

    .line 3
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setCode(I)V

    const/4 v2, 0x1

    .line 4
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setStepId(I)V

    const/4 v2, 0x2

    .line 5
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setJudgeType(I)V

    const/4 v2, 0x3

    .line 6
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setDeductScore(I)V

    const/4 v2, 0x4

    .line 7
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setStatus(I)V

    const/4 v2, 0x5

    .line 8
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setAllowUserSet(Z)V

    const/4 v2, 0x6

    .line 9
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setName(Ljava/lang/String;)V

    const/4 v2, 0x7

    .line 10
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setDesc(Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 11
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setCanAutoJudge(Z)V

    const/16 v2, 0x9

    .line 12
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setRuleIds(Ljava/lang/String;)V

    .line 13
    array-length v2, p0

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 14
    :try_start_0
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setUseMode(I)V

    :cond_0
    return-object v0
.end method

.method private static p(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p0, v0, :cond_0

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/framework/f/a;->b:I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p0, v0, :cond_1

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/framework/f/a;->c:I

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p0, v0, :cond_2

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/framework/f/a;->e:I

    goto :goto_0

    .line 7
    :cond_2
    sget v0, Lcn/mucang/android/jiakaoyi/framework/f/a;->d:I

    :goto_0
    const/4 v1, 0x1

    if-gtz v0, :cond_3

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return . deduct localV = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,request kemu = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v1

    .line 9
    :cond_3
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->w(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v2

    .line 10
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->j(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, ",kemu="

    const-string v5, ",\u672c\u5730version="

    if-ne v2, v0, :cond_4

    if-nez v3, :cond_4

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deduct : \u5df2\u7ecf\u4fdd\u5b58\u8fc7\u5168\u56fd\u6570\u636e,version="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v1

    :cond_4
    if-eqz v3, :cond_5

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deduct : \u6570\u636e\u5e93\u53d1\u751f\u9519\u8bef\uff0c\u91cd\u65b0\u5199\u5165\u57fa\u7840\u6570\u636e,version="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_5
    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/m/a;->r(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;I)V

    .line 14
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->w(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    nop

    if-eqz p1, :cond_6

    const-wide/16 v0, 0xc8

    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 16
    invoke-static {p0, v3}, Lcn/mucang/jiakaoyi/uilib/m/a;->p(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6570\u636e\u521d\u59cb\u5316\u5931\u8d25, version:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " kemu:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " RequestVersion:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeductDataManager"

    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return v3
.end method

.method public static q()Z
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcn/mucang/jiakaoyi/uilib/m/a;->a:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_0

    .line 3
    monitor-exit v0

    return v5

    .line 4
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/m/a;->p(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    move-result v1

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v3, v2}, Lcn/mucang/jiakaoyi/uilib/m/a;->p(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    move-result v3

    .line 6
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v4, v2}, Lcn/mucang/jiakaoyi/uilib/m/a;->p(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    move-result v4

    .line 7
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v6, v2}, Lcn/mucang/jiakaoyi/uilib/m/a;->p(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    move-result v6

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcn/mucang/jiakaoyi/uilib/m/a;->a:J

    .line 9
    monitor-exit v0

    return v2

    .line 10
    :cond_1
    monitor-exit v0

    return v5

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static r(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sdata/dv_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".data"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u8bfb\u53d6\u5185\u7f6e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u5168\u56fd\u6263\u5206\u6570\u636e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/m/c;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 7
    aget-byte v3, v1, v2

    xor-int/lit8 v3, v3, 0x67

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 9
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 10
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "%_%"

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/m/a;->o([Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->j(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    :try_start_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->b()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 17
    invoke-static {v4, v0}, Lcn/mucang/jiakaoyi/uilib/m/a;->c(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 18
    invoke-static {v3, v0}, Lcn/mucang/jiakaoyi/uilib/m/a;->l(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 20
    sget-object v3, Lcn/mucang/jiakaoyi/uilib/m/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :try_start_4
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/m/a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 23
    invoke-static {p1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 24
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 25
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v3

    .line 26
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deduct syncGlobalVersionData \u62a5\u9519:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 27
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 28
    :try_start_6
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/m/a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 29
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception p0

    goto :goto_2

    :catchall_4
    move-exception p0

    move-object v2, v0

    .line 30
    :goto_2
    invoke-static {p1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 32
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static s(JZLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return p0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u62c9\u53d6\u670d\u52a1\u7aef\u6263\u5206\uff0cexamSiteId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/d;

    invoke-direct {v1, p3}, Lcn/mucang/jiakaoyi/uilib/i/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {v1, p0, p1}, Lcn/mucang/jiakaoyi/uilib/i/d;->n(J)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 6
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    const-string v2, "\u8bb0\u5f55\u4e00\u6b21\u91cd\u7f6e\u62c9\u53d6\u670d\u52a1\u5668\u6263\u5206\u64cd\u4f5c"

    invoke-virtual {p2, v2}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    const-string p0, "\u670d\u52a1\u5668\u4e2a\u4eba\u6263\u5206\u662fnull"

    .line 8
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    monitor-exit v0

    return v2

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5668\u4e2a\u4eba\u6263\u5206: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object p2

    .line 12
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 15
    invoke-virtual {v5, p2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setUserId(Ljava/lang/String;)V

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getExamSiteId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {p0, p1, p3}, Lcn/mucang/jiakaoyi/uilib/m/a;->k(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_1
    if-ltz p3, :cond_5

    .line 22
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getExamSiteId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 24
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {p0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getExamSiteId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 27
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getExamSiteId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    if-nez v7, :cond_6

    .line 33
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_6
    invoke-virtual {v7, v6}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V

    .line 35
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 36
    :cond_7
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getExamSiteId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    if-nez v1, :cond_8

    .line 39
    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 40
    :cond_9
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 42
    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 43
    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_5

    :cond_b
    const/4 p0, 0x0

    .line 44
    :try_start_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->b()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 46
    invoke-static {v5, p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->c(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-static {v4, p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->l(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    invoke-static {p3, p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->v(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    :goto_6
    invoke-static {p0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_0
    move-exception p1

    .line 52
    :try_start_3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u540c\u6b65\u6263\u5206\u62a5\u9519\uff1a---------\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syncMyData \u62a5\u9519 : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string p2, "DeductDataManager"

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6570\u636e\u589e\u91cf\u66f4\u65b0\u5931\u8d25:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_6

    .line 57
    :goto_7
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p1

    .line 58
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    invoke-static {p0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :catchall_2
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method private static t(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->transform()Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static u(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;J)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;
    .locals 11

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v3

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_4

    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    monitor-exit v0

    return-object v2

    .line 9
    :cond_2
    const-class v4, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    const-string v8, "select * from t_deduct where code=? and exam_site_id=? and user_id=? order by position"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v7

    aput-object v1, v9, v5

    invoke-static {v8, v9}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v7

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v7

    if-ge v6, p2, :cond_5

    .line 13
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v4, v8, v9}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_4
    :goto_1
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    const-string v4, "select * from t_deduct where code=? and exam_site_id=? order by position"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    .line 16
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;-><init>()V

    .line 17
    invoke-virtual {v2, p0, v7}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Z)V

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {v2, p0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V

    .line 19
    :goto_3
    invoke-virtual {v2, v7}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setHadSetByUser(Z)V

    .line 20
    invoke-virtual {v2, v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setUserId(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v2}, Lcn/mucang/android/core/db/a;->w(Lcn/mucang/android/core/db/IdEntity;)V

    .line 22
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static v(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 3
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/m/a;->e(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "t_deduct"

    const-string v3, "_id=?"

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static w(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->dir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_Deduct_Version_Id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static x(Ljava/util/List;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;J)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 5
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->isDelete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2, v0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setUserId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setExamSiteId(J)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method
