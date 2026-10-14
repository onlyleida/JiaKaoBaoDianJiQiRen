package cn.mucang.android.download.ui;

import android.content.Context;
import android.content.Intent;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.download.DownloadEntity;
import cn.mucang.android.download.client.DownloadManager;
import cn.mucang.android.framework.download.R;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import java.io.File;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a extends BaseAdapter implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<DownloadEntity> f2995a;
    List<DownloadEntity> b;
    private Context c;

    /* JADX INFO: renamed from: cn.mucang.android.download.ui.a$a, reason: collision with other inner class name */
    static class C0097a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f2996a;
        TextView b;
        TextView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Button f2997d;

        C0097a() {
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f2998a;
        ProgressBar b;
        Button c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f2999d;

        b() {
        }
    }

    public a(Context context, List<DownloadEntity> list, List<DownloadEntity> list2) {
        this.c = context;
        this.f2995a = list;
        this.b = list2;
    }

    String a(int i) {
        if (i == 0) {
            return "下载";
        }
        if (i == 1 || i == 2 || i == 4) {
            return "请等待...";
        }
        if (i == 8) {
            return "暂停";
        }
        if (i == 16) {
            return "重启";
        }
        if (i == 32) {
            return "打开";
        }
        if (i == 64 || i == 128) {
            return SundialNumKeyBoardView.KEY_DELETE;
        }
        if (i != 256) {
            return null;
        }
        return "请等待...";
    }

    String b(long j) {
        if (j < 1024) {
            return String.format("%dB", Long.valueOf(j));
        }
        if (j < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return String.format("%dK", Long.valueOf(j >> 10));
        }
        if (j < 1073741824) {
            return String.format("%dM", Long.valueOf(j >> 20));
        }
        return j < 256 ? String.format("%dG", Long.valueOf(j >> 30)) : "太大了吧..";
    }

    String c(int i) {
        if (i == 1) {
            return "等待队列";
        }
        if (i == 2) {
            return "等待重试";
        }
        if (i == 4) {
            return "等待网路";
        }
        if (i == 8) {
            return "下载中...";
        }
        if (i == 16) {
            return "用户暂停";
        }
        if (i == 32) {
            return "完成";
        }
        if (i == 64) {
            return "下载失败";
        }
        if (i == 128) {
            return "内部错误";
        }
        if (i != 256) {
            return null;
        }
        return "系统资源不足";
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f2995a.size() + this.b.size() + 2;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (i == 0 || i == this.f2995a.size() + 1) {
            return 0;
        }
        return i < this.f2995a.size() + 1 ? 1 : 2;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            if (i == 0 || i == this.f2995a.size() + 1) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.dm__list_group_title, viewGroup, false);
            } else if (i < this.f2995a.size() + 1) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.dm__ongoing_list_item, viewGroup, false);
                b bVar = new b();
                bVar.f2998a = (TextView) view.findViewById(R.id.title);
                bVar.b = (ProgressBar) view.findViewById(R.id.progress);
                bVar.c = (Button) view.findViewById(R.id.action);
                bVar.f2999d = (TextView) view.findViewById(R.id.status);
                view.setTag(bVar);
            } else {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.dm__finished_list_item, viewGroup, false);
                C0097a c0097a = new C0097a();
                c0097a.f2996a = (TextView) view.findViewById(R.id.title);
                c0097a.b = (TextView) view.findViewById(R.id.time);
                c0097a.f2997d = (Button) view.findViewById(R.id.action);
                c0097a.c = (TextView) view.findViewById(R.id.size);
                view.setTag(c0097a);
            }
        }
        if (i == 0 || i == this.f2995a.size() + 1) {
            ((TextView) view).setText(i == 0 ? "正在下载" : "已下载");
            return view;
        }
        if (i >= this.f2995a.size() + 1) {
            DownloadEntity downloadEntity = this.b.get((i - 2) - this.f2995a.size());
            C0097a c0097a2 = (C0097a) view.getTag();
            c0097a2.f2996a.setText(downloadEntity.getTitle());
            c0097a2.b.setText(new Date(downloadEntity.getFinishTime()).toString());
            c0097a2.c.setText(b(downloadEntity.getContentLength()));
            c0097a2.f2997d.setText(a(downloadEntity.getDownloadStatus()));
            c0097a2.f2997d.setTag(Integer.valueOf(i));
            return view;
        }
        DownloadEntity downloadEntity2 = this.f2995a.get(i - 1);
        b bVar2 = (b) view.getTag();
        bVar2.f2998a.setText(downloadEntity2.getTitle());
        bVar2.f2999d.setText(c(downloadEntity2.getDownloadStatus()));
        bVar2.c.setText(a(downloadEntity2.getDownloadStatus()));
        bVar2.b.setProgress(downloadEntity2.getContentLength() != 0 ? (int) ((downloadEntity2.getDownloadedLength() * 100) / downloadEntity2.getContentLength()) : 0);
        bVar2.c.setTag(Integer.valueOf(i));
        bVar2.c.setOnClickListener(this);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        DownloadEntity downloadEntity = iIntValue < this.f2995a.size() + 1 ? this.f2995a.get(iIntValue - 1) : this.b.get((iIntValue - 2) - this.f2995a.size());
        String string = ((Button) view).getText().toString();
        if (string.equals("暂停")) {
            DownloadManager.i().m(downloadEntity.getId().longValue());
            return;
        }
        if (string.equals("打开")) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension("apk");
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            m.o(this.c, intent, mimeTypeFromExtension, new File(downloadEntity.getStorePath()), false);
            this.c.startActivity(intent);
            return;
        }
        if (string.equals(SundialNumKeyBoardView.KEY_DELETE)) {
            DownloadManager.i().r(downloadEntity.getId().longValue());
        } else if (string.equals("重启")) {
            DownloadManager.i().t(downloadEntity.getId().longValue());
        }
    }
}
