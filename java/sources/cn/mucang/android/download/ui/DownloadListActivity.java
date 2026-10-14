package cn.mucang.android.download.ui;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import cn.mucang.android.core.config.n;
import cn.mucang.android.download.DownloadEntity;
import cn.mucang.android.download.DownloadProgress;
import cn.mucang.android.download.DownloadStatusChange;
import cn.mucang.android.download.client.DownloadManager;
import cn.mucang.android.framework.download.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DownloadListActivity extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ListView f2989a;
    private cn.mucang.android.download.ui.a b;
    private List<DownloadEntity> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<DownloadEntity> f2990d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.download.client.a f2991e = new c();

    class a implements cn.mucang.android.download.client.c<List<DownloadEntity>> {
        a() {
        }

        @Override // cn.mucang.android.download.client.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(List<DownloadEntity> list) {
            DownloadListActivity.this.f2990d = list;
            DownloadListActivity.this.l();
        }
    }

    class b implements cn.mucang.android.download.client.c<List<DownloadEntity>> {
        b() {
        }

        @Override // cn.mucang.android.download.client.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(List<DownloadEntity> list) {
            DownloadListActivity.this.c = list;
            DownloadListActivity.this.l();
        }
    }

    class c extends cn.mucang.android.download.client.a {
        c() {
        }

        @Override // cn.mucang.android.download.client.a
        public void a(long j) {
            super.a(j);
            for (DownloadEntity downloadEntity : DownloadListActivity.this.f2990d) {
                if (downloadEntity.getId().longValue() == j) {
                    downloadEntity.setDownloadStatus(32);
                    break;
                }
            }
            DownloadListActivity.this.b.notifyDataSetChanged();
        }

        @Override // cn.mucang.android.download.client.a
        public void b(List<DownloadProgress> list) {
            super.b(list);
            for (DownloadProgress downloadProgress : list) {
                for (DownloadEntity downloadEntity : DownloadListActivity.this.f2990d) {
                    if (downloadEntity.getId().longValue() == downloadProgress.f2942a) {
                        downloadEntity.setDownloadedLength(downloadProgress.b);
                        break;
                    }
                }
            }
            DownloadListActivity.this.b.notifyDataSetChanged();
        }

        @Override // cn.mucang.android.download.client.a
        public void d(DownloadStatusChange downloadStatusChange) {
            super.d(downloadStatusChange);
            for (DownloadEntity downloadEntity : DownloadListActivity.this.f2990d) {
                if (downloadEntity.getId().longValue() == downloadStatusChange.f2943a) {
                    downloadEntity.setDownloadStatus(downloadStatusChange.c);
                    break;
                }
            }
            DownloadListActivity.this.b.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (this.f2990d == null || this.c == null) {
            return;
        }
        cn.mucang.android.download.ui.a aVar = new cn.mucang.android.download.ui.a(this, this.f2990d, this.c);
        this.b = aVar;
        this.f2989a.setAdapter((ListAdapter) aVar);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "下载列表";
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dm__download_list_activity);
        this.f2989a = (ListView) findViewById(R.id.list);
        DownloadManager downloadManagerI = DownloadManager.i();
        DownloadManager.f fVar = new DownloadManager.f();
        fVar.b(287);
        downloadManagerI.n(fVar, new a());
        DownloadManager downloadManagerI2 = DownloadManager.i();
        DownloadManager.f fVar2 = new DownloadManager.f();
        fVar2.b(224);
        downloadManagerI2.n(fVar2, new b());
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        DownloadManager.i().e(this.f2991e);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        DownloadManager.i().c(this.f2991e);
    }
}
